package web.Service;

import org.springframework.stereotype.Service;
import web.Model.Car;

import java.util.ArrayList;
import java.util.List;

@Service
public class CarService {
    private final List<Car> cars;

    public CarService() {
        cars = new ArrayList<>();
        cars.add(new Car(1998, "Toyota Camry", "Black"));
        cars.add(new Car(2001, "Honda Accord", "White"));
        cars.add(new Car(2003, "Ford Mustang", "Red"));
        cars.add(new Car(2004, "Tesla Model S", "Blue"));
        cars.add(new Car(2005, "BMW X5", "Silver"));
    }

    public List<Car> getAllCars(int count) {
        if (count >= cars.size()) {
            return cars;
        }
        return cars.subList(0, count);
    }
}

